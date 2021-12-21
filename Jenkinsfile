node("win10") {
    stage("Step 1 - use powershell") {
        dir("aaa") {
            powershell('''
                write-host hello host
                write-output hello > a.txt
                get-content a.txt
            ''')
        }
    }
    stage('Step 3 - print env') {
        powershell('''
            get-item env:
            get-item env:ComputerName
        ''')
    }
    stage("Step 4 - git plugin") {
        try {
            var_of_git = checkout(scm)
            echo var_of_git.get('GIT_URL')
            echo var_of_git.get('GIT_COMMIT')
        } catch (e) {
            // noop
        }
    }
    stage("Step 5 - git plugin test 2") {
        dir('bbb') {
            var_of_git2 = git(
                    url: 'https://gitee.com/xuqplus/hello-test',
                    // credentialsId: 'my_cred_id',
            )
            echo var_of_git2.get('GIT_URL')
            echo var_of_git2.get('GIT_COMMIT')
        }
    }
    stage("Step 6 - docker build") {
        dir('ngrok-jenkins') {
            powershell('''
                docker build -t hello-jenkins .
            ''')
        }
    }
}