<?$file='php://stdin';
$f=fopen($file,'r');
while(($l=fgets($f))!==false){$i[]=trim($l);};
function r(&$i,$c){do{$v=next($i);if(is_numeric($v)){$o[]=r($i,$v);}else if($v){$o[]=$v;}$c--;}while($c>0);return $o;}
$o=r($i,reset($i));
function bv($c,$d,$l){bh('| ',$d-1);echo $c;$i=$l-4*$d-2;do{echo '-';$i--;}while($i>=0);echo $c;bh(' |',$d-1,true);}
function bh($c,$d,$nl=false){$i=$d+1;while($i>0){echo $c;$i--;};if($nl){echo "\n";}}
function ic($o,$d,&$md=0,&$ml=0){if($d>$md){$md=$d;}if(!is_array($o)){$l=strlen($o)-1;if($l>$ml){$ml=$l;}return;}foreach($o as $v){ic($v,$d+1,$md,$ml);}}
ic($o,0,$md,$ml);$m=$ml+4*$md;
function i($o,$d,$m){if(!is_array($o)){bh('| ',$d);echo $o;bh(' ',$m-4*$d-strlen($o)-4);bh(' |',$d,true);return;}$d++;bv('.',$d,$m);foreach($o as $v){i($v,$d,$m);}bv('\'',$d,$m);}
i($o,-1,$m);
exit(0);

