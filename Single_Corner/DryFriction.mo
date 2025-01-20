within ABS.Single_Corner;

model DryFriction
  extends Interfaces.PartialGroundLongitudinalFriction;
  parameter Real u_s(min=0, max=1) = 0.85 "static friction coefficient";
  parameter Real u_d(min=0, max=1) = 0.65 "dynamic friction coefficient";
  final constant Real eps=1e10*Modelica.Constants.eps;
equation
  
  ux = if abs(slip)<eps then slip*u_s/eps else sign(slip)*(u_d);

  //slip=0 while ux<=u_s;
  
  
  annotation(
    Icon,
  Diagram);
  
end DryFriction;
