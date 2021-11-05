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

ActiveRecord::Schema.define(version: 2021_11_05_032918) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "nombre_campaña"
    t.string "vacuna"
    t.date "f_incio"
    t.date "f_fin"
    t.boolean "habilitada"
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

  create_table "user_campaings", force: :cascade do |t|
    t.string "user_id"
    t.string "campaign_id"
    t.string "vacunatorio_id"
    t.date "f_registracion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usercampaings", force: :cascade do |t|
    t.date "f_registracion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "vaccination_id", null: false
    t.integer "campaign_id", null: false
    t.index ["campaign_id"], name: "index_usercampaings_on_campaign_id"
    t.index ["user_id"], name: "index_usercampaings_on_user_id"
    t.index ["vaccination_id"], name: "index_usercampaings_on_vaccination_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccinations", force: :cascade do |t|
    t.string "nombre"
    t.text "direccion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "usercampaings", "campaigns"
  add_foreign_key "usercampaings", "users"
  add_foreign_key "usercampaings", "vaccinations"
end
