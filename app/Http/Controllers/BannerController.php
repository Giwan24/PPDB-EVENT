<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BannerController extends Controller
{
	public function index()
    {
    	// mengambil data judul dan deskripsi singkat dari table barang
    	$barang = DB::table('barang')
		->orderBy('event_id', 'desc')
		->paginate(6);
		
 
    	// mengirim data judul dan deskripsi singkat ke view index.blade.php
    	return view('index',['barang' => $barang]);
 
    }

	public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$barang = DB::table('barang')
		->where('nama_event','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data pegawai ke view index
		return view('index',['barang' => $barang]);
 
	}

	public function categorya()
    {
    	// mengambil data judul dan deskripsi singkat dari table barang
    	$barang = DB::table('barang')
		->orderBy('tanggal_event', 'asc')
		->paginate(6);
		
 
    	// mengirim data judul dan deskripsi singkat ke view index.blade.php
    	return view('terdekat',['barang' => $barang]);
 
    }

	public function categoryb()
    {
    	// mengambil data judul dan deskripsi singkat dari table barang
    	$barang = DB::table('barang')
		->orderBy('tanggal_event', 'desc')
		->paginate(6);
		
 
    	// mengirim data judul dan deskripsi singkat ke view index.blade.php
    	return view('terjauh',['barang' => $barang]);
 
    }
}
