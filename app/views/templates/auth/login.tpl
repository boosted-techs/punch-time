{extends file="layouts/default.tpl"}

{block name="head" }
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	 <link href="{{ asset('/assets/css/auth.css') }}" rel="stylesheet" type="text/css">
{/block}

{block name=body}
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box">
					<div class="content">
						<div class="header">
							
							<h1 class="lead">{$signup}</h1>
						</div>
						<form class="form-auth-small ui form" action="/login" method="POST">
                       		
							<div class="fields">
								<div class="sixteen wide field ">
									<div class="mb-3">
										<label for="username" class="form-label">{$username}</label>
										<input id="username" type="username" class="form-control" name="username"  placeholder="Enter your username" required autofocus>
									</div>
								</div>
							</div>
							<div class="fields">
								<div class="sixteen wide field ">
									<div class="mb-3">
										<label for="email" class="form-label">{$email}</label>
										<input id="email" type="email" class="form-control" name="email"  placeholder="Enter your e-mail address" required autofocus>
									</div>
								</div>
							</div>
							<div class="fields">
								<div class="sixteen wide field ">
									<div class="mb-3">
										<label for="password" class="color-white">{$pass}</label>
                        				<input id="password" type="password" class="form-control" name="password" placeholder="Enter your password" required>
									</div>
								</div>
							</div>
							<div class="fields">
								<div class="sixteen wide field">
									<div class="ui checkbox">
										<div class="mb-3">
											<div class="ui checkbox">
												<input type="checkbox" name="remember" >
												<label class="color-white">{$remember}</label>
											</div>
										</div>
									</div>
								</div>
							</div>

							<button type="submit" class="btn btn-primary">{$sign}</button>
								<footer>
									<a class="button primary" href="/" data-pjax="#main">{$register}</a> 
									<a class="button default" href="/">{$forgot}</a> 
								</footer>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
{/block}


