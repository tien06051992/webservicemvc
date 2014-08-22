<?php
	class product extends database {
		public function __construct() {
			$this->connect();
		}
		public function category() {
			$sql='select ID, TenLoaiSanPham from loaisanphams';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
		public function getProductByCategory($category) {
			$sql='select s.ID, TenSanPham, TenLoaiSanPham  from sanphams as s, loaisanphams as l where s.LoaiSanPham_ID=l.ID and l.ID="'.$category.'"';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
		public function getProductById($id) {
			$sql='select s.ID TenSanPham, TenLoaiSanPham from sanphams as s, loaisanphams as l where s.LoaiSanPham_ID=l.ID and s.ID="'.$id.'"';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
		public function detail($id) {
			$sql='select * from sanphams as s, loaisanphams as l where s.LoaiSanPham_ID=l.ID and s.ID="'.$id.'"';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
	}
?>