<?php
	$aws_access_key_id='ASIAYMG3UJGYWYNGB5G2';
	$aws_secret_access_key='jXzBTwMpvK73JLsCN+zSqhw8C9u+1mVz4LGxfy58';
	$aws_session_token='FwoGZXIvYXdzEPX//////////wEaDFDFHE3D0T+7atFcCyLAAWKdZ84SuDG8tnPPHMRodm+ZwXyHq/4y21OTUPRtfJYR1dwEtc2sD2SSd5tC8QIKi70dRNHVzZFKLhA1Hi4q0ukyt7x3WzXr2+nVK87bgFB5uxbI2XQ0p0h8seEvluQ+z7oSE7GIXoS6gSEEYgqVxsYw8o7PpgJCcyYOgOxdQcbOunLD10LAyanS6g6wsr/xnbVoXjgjL4gNRo1o7WGJsBi0hY++ZU4HEnrAb/1w2N9uPgwUtGi1Jy3Xqa0Zbaj+zSim2tuPBjItP9FmEsrsip6tyrRC6sjFpI1CDXFVazvyD48fjnzSARZTLzSBm+mDT6OkX5Og';

	$lambda_func=$_GET["method"];
	//$lambda_func="login";
	$payload='{"queryStringParameters": {';

	foreach ($_GET as $key => $value) {

		$payload .= '"' . $key . '":"' . $value .'",';

	}

	$payload=substr($payload, 0, -1);

	$payload.='}}';

	$cmd=' AWS_ACCESS_KEY_ID='. $aws_access_key_id .

	     ' AWS_SECRET_ACCESS_KEY='. $aws_secret_access_key .

	     ' AWS_SESSION_TOKEN='. $aws_session_token . ' aws lambda invoke --function-name --region us-east-1 '. $lambda_func . ' --payload \''. $payload . '\' /tmp/resp.json 2>&1';

	exec( $cmd,$result,$result2);

	header('Access-Control-Allow-Origin: *');

	$result=file_get_contents("/tmp/resp.json");

	$json=json_decode($result,true);

        echo json_encode($json['body']);
?>



