<?php
	class user extends database {
		private $name;
		private $pass;
		public function __construct($p_obj) {
			$this->connect();
			$this->name=$p_obj->name;
			$this->pass=$p_obj->pass;
		}
/*		public function user($p_name,$p_pass) {
			$this->name=$p_name;
			$this->pass=$p_pass;
		}*/
		public function login() {
			$sql='select * from taikhoans where TenDangNhap="'.$this->name.'" and MatKhau="'.$this->pass.'"';
			$this->query($sql);
			$data=array();
			if( $this->num_rows()==1 ){
				return $data='true';
			}else{
				return $data='false';
			}
			return $data='false';
		}
		public function signup() {
			$data="insert into taikhoans(TenDangNhap,MatKhau,CauHoiBiMat_id) values($this->name,$this->pass,1)";
			//$sql="insert into taikhoans(TenDangNhap,MatKhau) values($this->name,$this->pass)";
			return $data;
		}
	}
?>