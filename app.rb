require 'rack'

class App
  def call(env)
    [200, {"Content-Type" => "text/html"}, [ html ] ]
  end

  private

  def html
    [
      "<!DOCTYPE html><html>",
      head,
      body,
      "</html>"
    ].join
  end

  def head
    <<-HTML
      <head>
        <title>SSO Login Example</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <style type="text/css">
          body { background-color: #E6E6E6; margin:0.5emform{ margin:0;
          form { margin:0; padding:0; }
          form {
                margin: 0.5em 0;
                list-style: none;
                padding: 0.7em;
                background: #fff;
                -webkit-border-radius: 3px;
                -moz-border-radius: 3px;
                border-radius: 3px;
                -webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.07);
                -moz-box-shadow: 0 1px 2px rgba(0,0,0,0.07);
                box-shadow: 0 1px 2px rgba(0,0,0,0.07);
               }
        </style>
      </head>
    HTML
  end

  def body
    <<-HTML
      <body>

<div class="container-fluid">
  <div class="row">

   <div class="col-md-4">
    <form action='http://localhost:3001/sso/sessions' role='form' method='POST'>
      <input name='site_access_key' type='hidden' value='0c938b9276daea4dad4c0a8b4d202a30'>
      <div class="form-group">
        <lable>First Name</lable>
        <input class="form-control" name='user[first_name]' type='text'>
      </div>
      <div class="form-group">
        <lable>Last Name</lable>
        <input class="form-control" name='user[last_name]' type='text'>
      </div>
      <div class="form-group">
        <lable>Email</lable>
        <input class="form-control" name='user[email]' type='text'>
      </div>
      <input class='btn btn-default' type='submit' value='Login'>
    </form>

  </div>

  </div>
</div>

    </body>
    HTML
  end

end

