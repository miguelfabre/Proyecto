import cgi
import webapp2

import gdata.spreadsheet.service
from google.appengine.api import users


email = 'proyectoivosl@gmail.com'
password = 'pakhires'
spreadsheet_key = '1R3zLvtKxllRM71PdCDQu9XhNYo7xmf0On49WreyLi24' # key param
worksheet_id = 'od6' # default


MAIN_PAGE_HTML = """\
<html>
  <body>
    <form action="/sign" method="post">
      <div><textarea name="nombre" rows="3" cols="60"></textarea></div>
      <div><textarea name="descripcion" rows="3" cols="60"></textarea></div>
      <div><input type="submit" value="Enviar datos"></div>
    </form>
  </body>
</html>
"""

URL_SPREADSHEET_HTML = """\
<html>
  <body>
    <a href="https://docs.google.com/spreadsheets/d/1R3zLvtKxllRM71PdCDQu9XhNYo7xmf0On49WreyLi24/edit#gid=0">Enlace a la hoja de cálculo de Google Drive</a>
    </form>
  </body>
</html>
"""

class MainPage(webapp2.RequestHandler):
    def get(self):
        self.response.write(MAIN_PAGE_HTML)

class Guestbook(webapp2.RequestHandler):
   def post(self):
            client = gdata.spreadsheet.service.SpreadsheetsService()
	    client.debug = True
	    client.email = email
	    client.password = password
	    client.source = 'test client'
	    client.ProgrammaticLogin()
	    
	    rows = []
	    rows.append({'id':cgi.escape(self.request.get('nombre')),'title':cgi.escape(self.request.get('descripcion'))})
	    #rows.append({'id':'123','title':'12313'})	    

	    for row in rows:
		try:
		    client.InsertRow(row, spreadsheet_key, worksheet_id)
		except Exception as e:
		    print e
	    
	    #return
	    self.response.write(URL_SPREADSHEET_HTML)

application = webapp2.WSGIApplication([
    ('/', MainPage),
    ('/sign', Guestbook),
], debug=True)


# ---------------------------------------------

