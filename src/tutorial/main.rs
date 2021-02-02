mod ffi;

fn main() {
    println!("Hello World!");
    ffi::gen::cxxtest();
}
