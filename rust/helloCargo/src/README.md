`rustc` => used to compile rust files
## Cargo
Cargo is rust's package manager and build system
### Creating a cargo project
`cargo new <project_name>`
### .toml file
Tom’s Obvious, Minimal Language
### Cargo.lock
keeps track of the exact versions of dependencies in your project
### Other cargo commands
`cargo build` => creates an eecutable file in target/debug/<project_name>
<br>
`cargo check`  => compiles without creating an executable
<br>
`cargo run` => 
<br>
### Building for Release
`cargo build --release` => compirles the project with optimizations. Creates an executable in target/release folder
