# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120809040241) do

  create_table "item_requisicions", :force => true do |t|
    t.integer  "cantidad"
    t.string   "prioridad"
    t.integer  "item_id"
    t.integer  "requisicion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "nombre"
    t.string   "marca"
    t.integer  "medida"
    t.string   "estado"
    t.integer  "unidad_id"
    t.integer  "proveedor_id"
    t.integer  "seccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requisicions", :force => true do |t|
    t.string   "descripcion"
    t.date     "fecha"
    t.integer  "orden_de_compra_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
