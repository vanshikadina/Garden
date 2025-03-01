Butterfly Garden Simulation

Overview

This project is a Butterfly Garden Simulation implemented in Processing. It features animated butterflies, growing plants, and dynamic flowers with stems and leaves. The simulation includes realistic movements for butterflies and gradual plant growth over time.

Features

Butterflies 🦋
Flap their wings periodically.
Move dynamically across the screen with randomized colors.
Bounce off the screen edges.

Plants & Flowers 🌿🌸
Plants grow gradually over time.
Each plant consists of a stem, flowers, and leaves.
Flowers bloom at different positions with randomized colors.
Leaves grow alternately on the stem as the plant expands.

Environment 🌞☁️
A bright sun in the sky.
Moving clouds.
A brown ground to anchor the plants.

Code Structure
Butterfly Class
Handles butterfly motion and wing-flapping animation.
Uses random() to generate butterfly colors and speed.
Flies randomly across the screen while bouncing off edges.

Plant Class
Represents a plant with a growing stem, flowers, and leaves.
Handles plant growth by increasing stem height and flower size over time.
Ensures flowers move upwards as the stem grows.

Stem Class
Draws the main stem of the plant.
Grows gradually upwards as the plant expands.
Dynamically generates leaves in alternating positions along the stem.

Flower Class
Controls flower placement and color.
Increases petal count as the flower grows.
Main Sketch (setup() & draw())
Initializes plants and butterflies with random attributes.
Updates plant growth and butterfly movement in every frame.
Draws the sun, clouds, and ground for an immersive environment.

How to Run
Open the Processing IDE.
Copy and paste all class definitions (Butterfly, Plant, Stem, Flower) into the same sketch.
Run the sketch to see the animated butterfly garden in action!
