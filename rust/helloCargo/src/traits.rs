pub run_trait(){}

trait Car {
    fn startEngine();
}

struct Toyota {
    name: String
}

impl Car for Toyota {
    fn new() -> Self{
        Self { name:  "corrola".to_string() }
    }
}