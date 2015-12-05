node 'jenkins.example.com' {
    include jenkins
}
jenkins::plugin { 
	'credentials': ;
	'ssh-credentials': ;
	'git-client': ;
	'git-server': ;
	'rebuild': ;
	'token-macro': ;
	'junit': ;
	'mailer': ;
	'javadoc': ;
}
jenkins::plugin {	
	'maven-plugin': ;
	'promoted-builds': ;
	'scm-api': ;
	'script-security': ;
	'matrix-project': ;
	'mapdb-api': ;
	'subversion': ;
	'run-condition': ;
	'conditional-buildstep': ;
	'parameterized-trigger': ;
	'git': ;
	'scriptler': ;
	'uno-choice': ;
	'ansicolor': ;
}
jenkins::plugin {	
	'build-blocker-plugin': ;
	'dashboard-view': ;
	'ant': ;
	'analysis-core': ;
	'checkstyle': ;
	'chucknorris': ;
	'clover': ;
	'config-file-provider': ;
	'email-ext': ;
	'envfile': ;
	'nant': ;
	'ivy': ;
}
jenkins::plugin {	
	'envinject': ;
	'extended-choice-parameter': ;
	'findbugs': ;
	'nested-view': ;
	'nodejs': ;
	'pmd': ;
	'tap': ;
	'update-sites-manager': ;
}

