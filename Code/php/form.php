<?php
	/* @var $CONF_IP   */
	/* @var $CONF_DB_WORK   */
	/* @var $CONF_USER */
	/* @var $CONF_PASS */

	require "external/rb.php";
	require "../config/config.php";

	$host = "mysql:host=${CONF_IP};dbname=${CONF_DB_WORK}";
	R::setup($host, $CONF_USER, $CONF_PASS);
	R::freeze(true);

	$name      = $_POST["name"];
	$telephone = $_POST["telephone"];
	$email     = $_POST["email"];
	$ip        = $_SERVER["REMOTE_ADDR"];

	$order = R::dispense( 'orders' );

		$order->name      = $name;
		$order->telephone = $telephone;
		$order->email     = $email;
		$order->ip        = $ip;

	R::store( $order );

	mail( "olgatkachenko2008@yandex.ru","Новый заказ",
		"К вам обратились на сайте VashAgent27.ru\n\nИмя: ${name}\nТелефон: ${telephone}\nПочта: ${email}\n\nIP: ${ip}" );
