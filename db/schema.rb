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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_14_023831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "att_stocks", force: :cascade do |t|
    t.bigint "scan_att_stock_id"
    t.string "typeV", null: false
    t.string "numero", null: false
    t.boolean "used", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scan_att_stock_id"], name: "index_att_stocks_on_scan_att_stock_id"
  end

  create_table "cashes", force: :cascade do |t|
    t.integer "montant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "encaissement_id"
    t.index ["encaissement_id"], name: "index_cashes_on_encaissement_id"
  end

  create_table "cheques", force: :cascade do |t|
    t.string "banque"
    t.integer "numero"
    t.string "nom"
    t.decimal "montant"
    t.string "etat"
    t.date "date_reception"
    t.date "date_encaissement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "encaissement_id"
    t.index ["encaissement_id"], name: "index_cheques_on_encaissement_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "address"
    t.string "ville"
    t.string "pays"
    t.date "date_naissance"
    t.string "lieu_naissance"
    t.string "sexe"
    t.string "type_id"
    t.string "cin"
    t.date "date_val_cin"
    t.string "num_permis"
    t.string "cat_permis"
    t.string "lieu_permis"
    t.date "date_permis"
    t.date "date_val_permis"
    t.integer "tel"
    t.integer "tel_whatsapp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "scan"
    t.bigint "devi_id"
    t.index ["devi_id"], name: "index_clients_on_devi_id"
  end

  create_table "devis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "client_id"
    t.bigint "vehicule_id"
    t.bigint "souscripteur_id"
    t.bigint "facture_id"
    t.index ["client_id"], name: "index_devis_on_client_id"
    t.index ["facture_id"], name: "index_devis_on_facture_id"
    t.index ["souscripteur_id"], name: "index_devis_on_souscripteur_id"
    t.index ["vehicule_id"], name: "index_devis_on_vehicule_id"
  end

  create_table "encaissements", force: :cascade do |t|
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "facture_id"
    t.index ["facture_id"], name: "index_encaissements_on_facture_id"
  end

  create_table "factures", force: :cascade do |t|
    t.decimal "montant"
    t.decimal "montant_recu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scan_att_stocks", force: :cascade do |t|
    t.string "filepath"
    t.date "le", null: false
    t.string "typeV", null: false
    t.integer "qty", null: false
    t.integer "du", null: false
    t.integer "au", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "souscripteurs", force: :cascade do |t|
    t.string "titre"
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicules", force: :cascade do |t|
    t.string "matricule"
    t.string "matricule_ant"
    t.date "date_mc"
    t.date "date_mc_maroc"
    t.date "date_mutation"
    t.string "usage"
    t.string "proprietaire"
    t.string "address"
    t.date "date_val_cgrise"
    t.string "marque"
    t.string "type_cgrise"
    t.string "genre"
    t.string "modele"
    t.string "carburant"
    t.string "chassis"
    t.integer "cylindre"
    t.integer "cv"
    t.integer "place"
    t.integer "ptac"
    t.integer "poids"
    t.integer "ptmct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "scan"
  end

  add_foreign_key "cashes", "encaissements"
  add_foreign_key "cheques", "encaissements"
  add_foreign_key "clients", "devis"
  add_foreign_key "devis", "clients"
  add_foreign_key "devis", "factures"
  add_foreign_key "devis", "souscripteurs"
  add_foreign_key "devis", "vehicules"
  add_foreign_key "encaissements", "factures"
end
