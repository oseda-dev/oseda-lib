// fn main() {
//     let greeting = "hello world!";

//     println!("{}", greeting);
// }
//------------------------------------------------------------

// #![allow(unused_variables)]
// fn main() {
//     let arr = ["alice", "bob", "charlie"];

//     let x = arr[5];
// }

//------------------------------------------------------------

// #![allow(unused_variables, unused_assignments)]
// fn main() {
//     let x = 5;
//     x += 1;
// }

// ----------------------------
// enum Direction {
//     North,
//     South,
//     East,
//     West,
// }

//------------------------------------------------------------

// #![allow(unused_variables, unused_assignments)]
// fn main() {


//     let x = match get_direction(){
//         Direction::North => 1,
//         Direction::East => 2,
//         Direction::South => 2,
//     };
// }


// fn get_direction() -> Direction {
//     Direction::North
// }

//------------------------------------------------------------

// enum RealCat {
//     Alive { hungry: bool },
//     Dead,
// }

// fn main() {
//     let _ = match getCat(){
//         RealCat::Alive { hungry: true } => "Feed me!",
//         RealCat::Alive { hungry: false } => "Doing great",
//         RealCat::Dead => ":(",
//     }
// }

// fn getCat() -> RealCat {
//     return RealCat::Alive(false)
// }
//---------------------------------------------
// fn divide(a: i32, b: i32) -> Result<i32, String> {
//     if b == 0 {
//         return Err("cannot divide by zero".to_string());
//     } 

//     return Ok(a / b);
// }

// fn main() {
//     let x = match divide(10, 2) {
//         Ok(result) => result * 2,
//         Err(err) => 0,
//     };
// }
//-------------------------------------------------
// fn divide(a: i32, b: i32) -> Result<i32, String> {
//     if b == 0 {
//         return Err("cannot divide by zero".to_string());
//     } 

//     return Ok(a / b);
// }

// fn do_math() -> Result<i32, String> {
//     let temp = divide(15, 3)?; 
//     // ...
//     return Ok(temp);
// }

// fn main() {
//     let answer = do_math();
// }
//---------------------------
// X 
// fn greet(name: String) {
//     println!("Hello, {}!", name);
// }

// fn main() {x
//     let name = String::from("Bob");

//     greet(name);

//     println!("You greeted {}", name);
// }
// -------------------------------------------
// fn greet(name: &String) {
//     println!("Hello, {}!", name);
// }

// fn main() {
//     let name = String::from("Bob");

//     greet(&name);

//     println!("You greeted {}", name);
// }
//--------------------

// fn greet(name: &String) {

//     name = &name.to_uppercase();
//     println!("Hello, {}!", name);
// }

// fn main() {
//     let name = String::from("Bob");

//     greet(&name);

//     println!("You greeted {}", name);
// }
//--------------
// fn greet(name: &mut String) {

//     *name = name.to_uppercase();
//     println!("Hello, {}!", name);
// }

// fn main() {
//     let mut name = String::from("Bob");

//     greet(&mut name);

//     println!("You greeted {}", name);
// }
//-----------------------------

fn main() {
    let names = vec!("Alice", "Bob", "Charlie");

    let x = true;
    assert!(x, "x wasn't true!");
    
    println!("{:?}", names);
}