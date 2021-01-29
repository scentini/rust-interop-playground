#[cxx::bridge]
mod ffi {
    unsafe extern "C++" {
        include!("src/tutorial/cxxtest.h");
        fn cxxtest();
    }
}


fn main() {
    println!("Hello World!");
    ffi::cxxtest();
}