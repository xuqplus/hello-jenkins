node("win10") {
    stage("Step 1 - check code") {
        var_of_git = checkout(scm)
    }
    stage("Step 2 - docker build") {
        dir('ngrok-nginx') {
            powershell('''
                docker build -t local/ngrok-nginx .
            ''')
        }
    }
    stage("Step 3 - docker deploy") {
        dir('ngrok-nginx') {
            try {
                powershell('''
                    docker rm -f ngrok-nginx
                ''')
            } catch (e) {

            }
            powershell('''
                docker run -itd --restart always --name ngrok-nginx -p 7080:80 local/ngrok-nginx
            ''')
        }
    }
}