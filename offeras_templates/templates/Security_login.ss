<head>
    <base href="/"/>
    <title>Login</title>
</head>
<body class="login-admin">
	<div class="modal" id="login-modal" role="dialog" style="display: block">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	      	<% if $ClubModule__getLogo %>
                <div class="center"><img class="logo<% if $ClubModule__getLogo.Classes%> $ClubModule__getLogo.Classes<% end_if %>" src="{$ClubModule__getLogo.URL}" alt="Islands Lotto Logo" /></div>
            <% end_if %>
	        <h4 class="modal-title">Login</h4>
	      </div>
	      <div class="modal-body">
	        $Content
	        $Form
	      </div>
	    </div>
	  </div>
	</div>
</body>
