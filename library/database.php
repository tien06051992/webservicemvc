<?php
	class database {
		private $hostname="localhost";
		private $userhost="root";
		private $passhost="";
		private $dbname="webbanhang";
		private $conn=NULL;
		private $result=NULL;
		public function connect() {
			$this->conn=mysql_connect($this->hostname,$this->userhost,$this->passhost);
			mysql_select_db($this->dbname,$this->conn);
		}
		public function disconnect() {
			if($this->conn) {
				mysql_close($this->conn);
			}
		}
		public function query($sql) {
			if($this->conn){
				mysql_query("set names 'utf8'");
				$this->result=mysql_query($sql);
			}
		}
		public function num_rows() {
			if($this->result){
				$row=mysql_num_rows($this->result);
			}else{
				$row=0;
			}
			return $row;
		}
		public function fetch_assoc(){
			if($this->result){
				$data=mysql_fetch_assoc($this->result);
			}else{
				$data=0;
			}
			return $data;
		}
		public function fetch_assoc_all(){
			$data=array();
			if($this->result){
				while($row=$this->fetch_assoc()){
					$data[]=$row;
				}
			}else{
				$data=0;
			}
			return $data;
		}
	}
?>