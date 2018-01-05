#!/bin/bash


echo "Drop Migrate y Seed..."

#
#modificar
#
rails db:drop
rails db:migrate
rails db:seed