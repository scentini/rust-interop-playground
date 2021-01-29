#[cxx::bridge]
pub mod gen {

unsafe extern "C++" {
    include!("src/tutorial/cxxtest.h");
    fn cxxtest();
}

extern "Rust" {
    fn rusttest();
}

}