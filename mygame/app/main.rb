# This "def"ines a function, named "tick," which takes a single argument
# named "args". DragonRuby looks for this function and calls it every
# frame, 60 times a second. "args" is a magic structure with lots of
# information in it. You can set variables in there for your own game state,
# and every frame it will updated if keys are pressed, joysticks moved,
# mice clicked, etc.
def tick args

  # One of the things in "args" is the "outputs" object that your game uses
  # to draw things. Afraid of rendering APIs? No problem. In DragonRuby,
  # you use arrays to draw things and we figure out the details.
  # If you want to draw text on the screen, you give it an array (the thing
  # in the [ brackets ]), with an X and Y coordinate and the text to draw.
  # The "<<" thing says "append this array onto the list of them at
  # args.outputs.labels)
  args.state.rotation ||= 0
  args.state.x ||= 576
  args.state.y ||= 100

  args.state.x += 1
  args.state.y += 1 

  args.outputs.sprites << [args.state.x,
                           args.state.y,
                           128,
                           101,
                           'sprites/circle/black.png',
                           args.state.rotation]
  args.outputs.labels  << [580, 400, 'Hello World!']

  args.state.rotation -= 1
end
