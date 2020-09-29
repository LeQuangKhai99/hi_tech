<?php
namespace App\Component;
class RecusiveOptionSelect{
    private $data;
    private $html;
    public function __construct($data){
        $this->html = "";
        $this->data = $data;
    }

    public function Option($str, $parent_id, $id){
        foreach ($this->data as $value){
            if ($value->parent_id == $parent_id){
                if ($parent_id == 0){
                    $str = "";
                }
                if (!empty($id) && $id == $value->id){
                    $this->html .= "<option selected value='".$value->id."'>".$str.$value->name."</option>";
                }
                else{
                    $this->html .= "<option value='".$value['id']."'>".$str.$value->name."</option>";
                }
                $this->Option($str."--", $value['id'], $id);
            }
        }
        return $this->html;
    }
}
