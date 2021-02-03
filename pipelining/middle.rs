use foo::foo;
use bar::bar;

pub fn middle() {
    println!("MIDDLE");
    foo();
    bar();
}