<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // mengambil data judul dan deskripsi singkat dari table barang
    	$barang = DB::table('barang')
        ->orderBy('tanggal_event', 'desc')
		->paginate(10);
 
    	// mengirim data judul dan deskripsi singkat ke view dashboard.blade.php
    	return view('dashboard',['barang' => $barang]);
    }
    public function logout(Request $request){
     
        Auth::logout();
 
        return redirect('/admin');
     }

     public function tambah()
     {
     
         // memanggil view tambah
         return view('tambah');
     
     }
 
     // method untuk insert data ke table pegawai
     public function store(Request $request)
     {
         // insert data ke table barang
         DB::table('barang')->insert([
             'nama_event' => $request->nama_event,
             'deskripsi_singkat' => $request->deskripsi_singkat,
             'deskripsi' => $request->deskripsi,
             'gambar' => $request->gambar,
             'tanggal_event' => $request->tanggal_event
         ]);
         // alihkan halaman ke halaman pegawai
         return redirect('/admin');
     
     }
 
     // method untuk edit data pegawai
     public function edit($id)
     {
         // mengambil data pegawai berdasarkan id yang dipilih
         $barang = DB::table('barang')->where('event_id',$id)->get();
         // passing data pegawai yang didapat ke view edit.blade.php
         return view('edit',['barang' => $barang]);
     
     }
     // update data pegawai
     public function update(Request $request)
     {
         // update data pegawai
         DB::table('barang')->where('event_id',$request->id)->update([
             'nama_event' => $request->nama_event,
             'deskripsi_singkat' => $request->deskripsi_singkat,
             'deskripsi' => $request->deskripsi,
             'gambar' => $request->gambar
         ]);
         // alihkan halaman ke halaman pegawai
         return redirect('/admin');
     }
     // method untuk hapus data pegawai
     public function hapus($id)
     {
         // menghapus data pegawai berdasarkan id yang dipilih
         DB::table('barang')->where('event_id',$id)->delete();
             
         // alihkan halaman ke halaman pegawai
         return redirect('/admin');
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
		return view('dashboard',['barang' => $barang]);
 
	}
}


