<?php

namespace App\Controllers;

class Home extends BaseController
{
	public function index()
	{
		$data = [
			'title' => 'CI+React'
		];
		echo view('templates/header', $data);
		echo view('home', $data);
		echo view('templates/footer', $data);
	}

	//--------------------------------------------------------------------

}
