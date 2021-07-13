def tick args
  args.state.armSizeX ||= 60
  args.state.armSizeY ||= 180

  if args.inputs.mouse.click
    args.state.armSizeX = args.state.armSizeX + 1
    args.state.armSizeY = args.state.armSizeY + 1
  end

  args.outputs.sprites << [580,
                           400,
                           128,
                           128,
                           'sprites/andy.png']

  args.outputs.sprites << [460,
                           300,
                           args.state.armSizeX,
                           args.state.armSizeY,
                           'sprites/brasgauche.png']

  args.outputs.sprites << [720,
                           300 ,
                           args.state.armSizeX,
                           args.state.armSizeY,
                           'sprites/brasdroit.png']

  args.state.rotation -= 1
end
