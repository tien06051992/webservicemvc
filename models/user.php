<?php
	class user extends database {
		public function __construct() {
			$this->connect();
		}
		public function login() {
			$sql='select * from tbl_user';
			$this->query($sql);
			$data=$this->fetch_assoc_all();
			return $data;
		}
		public function signup($bien) {
			// will process valiable
			return $bien;
		}
	}
?>