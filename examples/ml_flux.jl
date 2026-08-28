using Flux
using Flux.Data.MNIST

function train_model()
    model = Chain(
        784 => 128,
        relu,
        128 => 64,
        relu,
        64 => 10,
        softmax
    )
    
    loss(x, y) = Flux.crossentropy(model(x), y)
    
    optimizer = ADAM(0.001)
    
    println("Model architecture:")
    println(model)
    
    return model
end
