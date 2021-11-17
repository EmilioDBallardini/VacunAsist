# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_17_012122) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campaingfor_users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "campaing_id", null: false
    t.index ["campaing_id"], name: "index_campaingfor_users_on_campaing_id"
  end

  create_table "campaings", force: :cascade do |t|
    t.text "name"
    t.text "vacuna"
    t.date "inicio"
    t.date "fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "noticia", force: :cascade do |t|
    t.string "img_url"
    t.string "pie_de_pagina"
    t.string "cuerpo"
    t.string "epigrafe"
    t.string "titulo"
    t.string "subtitulo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turnos", force: :cascade do |t|
    t.datetime "Fecha_hora"
    t.boolean "disponible"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vaccination_id", null: false
    t.index ["vaccination_id"], name: "index_turnos_on_vaccination_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tipo"
    t.integer "dni"
    t.date "nacimiento"
    t.string "nombre"
    t.string "apellido"
    t.boolean "enfermedad"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccinations", force: :cascade do |t|
    t.text "nombre"
    t.text "direccion"
    t.text "contacto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "campaingfor_users", "campaings"
  add_foreign_key "turnos", "vaccinations"
end
