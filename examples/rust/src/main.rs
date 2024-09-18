use clap::{Arg, Command};

fn hello(name: &str) -> String {
    format!("Hello, {}!", name)
}

fn main() {
    // Define the version dynamically using an environment variable set at compile time
    let version = env!("CARGO_PKG_VERSION");

    // Initialize Clap Command
    let matches = Command::new("Hello CLI")
        .version(version)
        .about("A simple CLI to greet users")
        .arg(
            Arg::new("input")
                .help("The name to greet")
                .index(1)
                .required(false),
        )
        .get_matches();

    // Get the input or default to "World"
    let input = matches.get_one::<String>("input").map(|s| s.as_str()).unwrap_or("World");

    // Output the greeting
    println!("{}", hello(input));
}

#[cfg(test)]
mod tests {
    use super::*;

    // Test for the hello function
    #[test]
    fn test_hello() {
        assert_eq!(hello("Alice"), "Hello, Alice!");
        assert_eq!(hello("World"), "Hello, World!");
        assert_eq!(hello(""), "Hello, !");
    }
}