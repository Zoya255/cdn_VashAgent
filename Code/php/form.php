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

	$order = R::dispense( 'orders' );

		$order->name      = $_POST["name"];
		$order->telephone = $_POST["telephone"];
		$order->email     = $_POST["email"];
		$order->ip        = $_SERVER["REMOTE_ADDR"];

	R::store( $order );
