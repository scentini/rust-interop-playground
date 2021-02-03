extern crate rusttest;
use rusttest::rusttest;

#[cxx::bridge]
pub mod gen {
    unsafe extern "C++" {
        include!("cxxtest.h");
        fn cxxtest();
    }

    extern "Rust" {
        fn rusttest();
    }
}
