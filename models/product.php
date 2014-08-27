<?php
	class product extends database {
		private $id;
		private $category;
		public function __construct($p_obj) {
			$this->connect();
			$this->id=$p_obj->id;
			$this->category=$p_obj->category;
		}
		public function category() {
			$sql='select ID, TenLoaiSanPham from loaisanphams';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
		public function getProductByCategory() {
			$sql='select s.ID, TenSanPham, TenLoaiSanPham  from sanphams as s, loaisanphams as l where s.LoaiSanPham_ID=l.ID and l.ID="'.$this->category.'"';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
		public function getProductById() {
			$sql='select s.ID TenSanPham, TenLoaiSanPham from sanphams as s, loaisanphams as l where s.LoaiSanPham_ID=l.ID and s.ID="'.$this->id.'"';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
		public function detail() {
			$sql='select * from sanphams as s, loaisanphams as l where s.LoaiSanPham_ID=l.ID and s.ID="'.$this->id.'"';
			$this->query($sql);
			return $this->fetch_assoc_all();
		}
	}
?>