#![cfg_attr(
    all(not(debug_assertions), target_os = "windows"),
    windows_subsystem = "windows"
)]

use tauri::{command, generate_context, generate_handler};

#[command]
fn greet(name: &str) -> String {
    format!("Hello {}", name)
}

fn main() {
    tauri::Builder::default()
        .invoke_handler(generate_handler![greet])
        .run(generate_context!())
        .expect("error while running tauri application");
}
