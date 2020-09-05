use std::collections

fn main() {
    println!("Hello, world!");

    let request = Request::builder()
      .uri("https://google.com")
      .body(())
      .unwrap();

    let response = send(request);

    println!(response);
}
