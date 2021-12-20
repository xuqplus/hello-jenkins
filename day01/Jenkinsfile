node("win10") {
    stage("Step 1") {
        dir("aaa") {
            powershell('''
                write-host hello host
                write-output hello > a.txt
                get-content a.txt
            ''')
        }
    }
}