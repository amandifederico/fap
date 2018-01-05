##!/bin/bash
#
#
rails g controller Welcome index
rails g controller static_pages production_line
#
#echo "Scaffold de tablas..."
#
#
rails g scaffold Agent last_name:string name:string dni:integer position:references up_date:date down_date:date

##---------------
rails g scaffold AnimalType description:string 
rails g scaffold Animal description:string animal_type:references average_value:integer initials:string 

##---------------
rails g scaffold City name:string province:string cp:integer

##---------------
rails g scaffold Driver name:string last_name:string dni:integer observation:string 

##---------------
rails g scaffold Troop dte:integer arrival_date:date arrival_time:time turn:references provider:references city:references troop_number:integer cargo_date:date expiration_date:date transport:references seal_number:integer liveweight:integer quantity_control:integer close_code:string
rails g scaffold TroopDetail troop:references animal:references quantity:integer fallen:integer observartion:string

##---------------
rails g scaffold Place description:string

##---------------
rails g scaffold Position name:string description:string

##---------------
rails g scaffold Provider name:string cuit:integer renspa:string telephone:integer email:string address:string up_date:date down_date:date city:references active:boolean observation:string

##---------------
rails g scaffold ProductionDetail production:references type:references animal:references weight:integer weight_control:integer observation:string 
rails g scaffold Production troop:references description:string

##---------------
rails g scaffold RangeTroopNumber min:integer max:integer

##---------------
rails g scaffold SubProductType description:string
rails g scaffold SubProduct troop:references observartion:string
rails g scaffold SubProductDetail sub_product:references sub_product_type:references weight:integer weight_control:integer caliber:integer observartion:string

##---------------
rails g scaffold Transport coupled:integer capacity:integer plate:string model:string brand:string weight:integer

##---------------
rails g scaffold Turn date:date description:string
rails g scaffold TurnDetail turn:references agent:references place:references position:references observation:string

##---------------
rails g scaffold Type name:string description:string animal_type:references
