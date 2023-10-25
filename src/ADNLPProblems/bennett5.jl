export bennett5

function bennett5(; use_nls::Bool = false, kwargs...)
  model = use_nls ? :nls : :nlp
  return bennett5(Val(model); kwargs...)
end

function bennett5(
  ::Val{:nlp};
  n::Int = default_nvar,
  type::Type{T} = Float64,
  kwargs...,
) where {T}
  y = Rational{Int}[
    -34.834702E0 7.447168E0
    -34.393200E0 8.102586E0
    -34.152901E0 8.452547E0
    -33.979099E0 8.711278E0
    -33.845901E0 8.916774E0
    -33.732899E0 9.087155E0
    -33.640301E0 9.232590E0
    -33.559200E0 9.359535E0
    -33.486801E0 9.472166E0
    -33.423100E0 9.573384E0
    -33.365101E0 9.665293E0
    -33.313000E0 9.749461E0
    -33.260899E0 9.827092E0
    -33.217400E0 9.899128E0
    -33.176899E0 9.966321E0
    -33.139198E0 10.029280E0
    -33.101601E0 10.088510E0
    -33.066799E0 10.144430E0
    -33.035000E0 10.197380E0
    -33.003101E0 10.247670E0
    -32.971298E0 10.295560E0
    -32.942299E0 10.341250E0
    -32.916302E0 10.384950E0
    -32.890202E0 10.426820E0
    -32.864101E0 10.467000E0
    -32.841000E0 10.505640E0
    -32.817799E0 10.542830E0
    -32.797501E0 10.578690E0
    -32.774300E0 10.613310E0
    -32.757000E0 10.646780E0
    -32.733799E0 10.679150E0
    -32.716400E0 10.710520E0
    -32.699100E0 10.740920E0
    -32.678799E0 10.770440E0
    -32.661400E0 10.799100E0
    -32.644001E0 10.826970E0
    -32.626701E0 10.854080E0
    -32.612202E0 10.880470E0
    -32.597698E0 10.906190E0
    -32.583199E0 10.931260E0
    -32.568699E0 10.955720E0
    -32.554298E0 10.979590E0
    -32.539799E0 11.002910E0
    -32.525299E0 11.025700E0
    -32.510799E0 11.047980E0
    -32.499199E0 11.069770E0
    -32.487598E0 11.091100E0
    -32.473202E0 11.111980E0
    -32.461601E0 11.132440E0
    -32.435501E0 11.152480E0
    -32.435501E0 11.172130E0
    -32.426800E0 11.191410E0
    -32.412300E0 11.210310E0
    -32.400799E0 11.228870E0
    -32.392101E0 11.247090E0
    -32.380501E0 11.264980E0
    -32.366001E0 11.282560E0
    -32.357300E0 11.299840E0
    -32.348598E0 11.316820E0
    -32.339901E0 11.333520E0
    -32.328400E0 11.349940E0
    -32.319698E0 11.366100E0
    -32.311001E0 11.382000E0
    -32.299400E0 11.397660E0
    -32.290699E0 11.413070E0
    -32.282001E0 11.428240E0
    -32.273300E0 11.443200E0
    -32.264599E0 11.457930E0
    -32.256001E0 11.472440E0
    -32.247299E0 11.486750E0
    -32.238602E0 11.500860E0
    -32.229900E0 11.514770E0
    -32.224098E0 11.528490E0
    -32.215401E0 11.542020E0
    -32.203800E0 11.555380E0
    -32.198002E0 11.568550E0
    -32.189400E0 11.581560E0
    -32.183601E0 11.594420E0
    -32.174900E0 11.607121E0
    -32.169102E0 11.619640E0
    -32.163300E0 11.632000E0
    -32.154598E0 11.644210E0
    -32.145901E0 11.656280E0
    -32.140099E0 11.668200E0
    -32.131401E0 11.679980E0
    -32.125599E0 11.691620E0
    -32.119801E0 11.703130E0
    -32.111198E0 11.714510E0
    -32.105400E0 11.725760E0
    -32.096699E0 11.736880E0
    -32.090900E0 11.747890E0
    -32.088001E0 11.758780E0
    -32.079300E0 11.769550E0
    -32.073502E0 11.780200E0
    -32.067699E0 11.790730E0
    -32.061901E0 11.801160E0
    -32.056099E0 11.811480E0
    -32.050301E0 11.821700E0
    -32.044498E0 11.831810E0
    -32.038799E0 11.841820E0
    -32.033001E0 11.851730E0
    -32.027199E0 11.861550E0
    -32.024300E0 11.871270E0
    -32.018501E0 11.880890E0
    -32.012699E0 11.890420E0
    -32.004002E0 11.899870E0
    -32.001099E0 11.909220E0
    -31.995300E0 11.918490E0
    -31.989500E0 11.927680E0
    -31.983700E0 11.936780E0
    -31.977900E0 11.945790E0
    -31.972099E0 11.954730E0
    -31.969299E0 11.963590E0
    -31.963501E0 11.972370E0
    -31.957701E0 11.981070E0
    -31.951900E0 11.989700E0
    -31.946100E0 11.998260E0
    -31.940300E0 12.006740E0
    -31.937401E0 12.015150E0
    -31.931601E0 12.023490E0
    -31.925800E0 12.031760E0
    -31.922899E0 12.039970E0
    -31.917101E0 12.048100E0
    -31.911301E0 12.056170E0
    -31.908400E0 12.064180E0
    -31.902599E0 12.072120E0
    -31.896900E0 12.080010E0
    -31.893999E0 12.087820E0
    -31.888201E0 12.095580E0
    -31.885300E0 12.103280E0
    -31.882401E0 12.110920E0
    -31.876600E0 12.118500E0
    -31.873699E0 12.126030E0
    -31.867901E0 12.133500E0
    -31.862101E0 12.140910E0
    -31.859200E0 12.148270E0
    -31.856300E0 12.155570E0
    -31.850500E0 12.162830E0
    -31.844700E0 12.170030E0
    -31.841801E0 12.177170E0
    -31.838900E0 12.184270E0
    -31.833099E0 12.191320E0
    -31.830200E0 12.198320E0
    -31.827299E0 12.205270E0
    -31.821600E0 12.212170E0
    -31.818701E0 12.219030E0
    -31.812901E0 12.225840E0
    -31.809999E0 12.232600E0
    -31.807100E0 12.239320E0
    -31.801300E0 12.245990E0
    -31.798401E0 12.252620E0
    -31.795500E0 12.259200E0
    -31.789700E0 12.265750E0
    -31.786800E0 12.272240E0
  ]
  function f(x; y = y)
    m = 154
    return 1 // 2 * sum((y[i, 1] - x[1] * (x[2] + y[i, 2])^(-1 / x[3]))^2 for i = 1:m)
  end
  x0 = T[-2000, 50, 0.8] # starting value 2 is: T[-1500, 45, 0.85]
  return ADNLPModels.ADNLPModel(f, x0, name = "bennett5"; kwargs...)
end

function bennett5(
  ::Val{:nls};
  n::Int = default_nvar,
  type::Type{T} = Float64,
  kwargs...,
) where {T}
  y = Rational{Int}[
    -34.834702E0 7.447168E0
    -34.393200E0 8.102586E0
    -34.152901E0 8.452547E0
    -33.979099E0 8.711278E0
    -33.845901E0 8.916774E0
    -33.732899E0 9.087155E0
    -33.640301E0 9.232590E0
    -33.559200E0 9.359535E0
    -33.486801E0 9.472166E0
    -33.423100E0 9.573384E0
    -33.365101E0 9.665293E0
    -33.313000E0 9.749461E0
    -33.260899E0 9.827092E0
    -33.217400E0 9.899128E0
    -33.176899E0 9.966321E0
    -33.139198E0 10.029280E0
    -33.101601E0 10.088510E0
    -33.066799E0 10.144430E0
    -33.035000E0 10.197380E0
    -33.003101E0 10.247670E0
    -32.971298E0 10.295560E0
    -32.942299E0 10.341250E0
    -32.916302E0 10.384950E0
    -32.890202E0 10.426820E0
    -32.864101E0 10.467000E0
    -32.841000E0 10.505640E0
    -32.817799E0 10.542830E0
    -32.797501E0 10.578690E0
    -32.774300E0 10.613310E0
    -32.757000E0 10.646780E0
    -32.733799E0 10.679150E0
    -32.716400E0 10.710520E0
    -32.699100E0 10.740920E0
    -32.678799E0 10.770440E0
    -32.661400E0 10.799100E0
    -32.644001E0 10.826970E0
    -32.626701E0 10.854080E0
    -32.612202E0 10.880470E0
    -32.597698E0 10.906190E0
    -32.583199E0 10.931260E0
    -32.568699E0 10.955720E0
    -32.554298E0 10.979590E0
    -32.539799E0 11.002910E0
    -32.525299E0 11.025700E0
    -32.510799E0 11.047980E0
    -32.499199E0 11.069770E0
    -32.487598E0 11.091100E0
    -32.473202E0 11.111980E0
    -32.461601E0 11.132440E0
    -32.435501E0 11.152480E0
    -32.435501E0 11.172130E0
    -32.426800E0 11.191410E0
    -32.412300E0 11.210310E0
    -32.400799E0 11.228870E0
    -32.392101E0 11.247090E0
    -32.380501E0 11.264980E0
    -32.366001E0 11.282560E0
    -32.357300E0 11.299840E0
    -32.348598E0 11.316820E0
    -32.339901E0 11.333520E0
    -32.328400E0 11.349940E0
    -32.319698E0 11.366100E0
    -32.311001E0 11.382000E0
    -32.299400E0 11.397660E0
    -32.290699E0 11.413070E0
    -32.282001E0 11.428240E0
    -32.273300E0 11.443200E0
    -32.264599E0 11.457930E0
    -32.256001E0 11.472440E0
    -32.247299E0 11.486750E0
    -32.238602E0 11.500860E0
    -32.229900E0 11.514770E0
    -32.224098E0 11.528490E0
    -32.215401E0 11.542020E0
    -32.203800E0 11.555380E0
    -32.198002E0 11.568550E0
    -32.189400E0 11.581560E0
    -32.183601E0 11.594420E0
    -32.174900E0 11.607121E0
    -32.169102E0 11.619640E0
    -32.163300E0 11.632000E0
    -32.154598E0 11.644210E0
    -32.145901E0 11.656280E0
    -32.140099E0 11.668200E0
    -32.131401E0 11.679980E0
    -32.125599E0 11.691620E0
    -32.119801E0 11.703130E0
    -32.111198E0 11.714510E0
    -32.105400E0 11.725760E0
    -32.096699E0 11.736880E0
    -32.090900E0 11.747890E0
    -32.088001E0 11.758780E0
    -32.079300E0 11.769550E0
    -32.073502E0 11.780200E0
    -32.067699E0 11.790730E0
    -32.061901E0 11.801160E0
    -32.056099E0 11.811480E0
    -32.050301E0 11.821700E0
    -32.044498E0 11.831810E0
    -32.038799E0 11.841820E0
    -32.033001E0 11.851730E0
    -32.027199E0 11.861550E0
    -32.024300E0 11.871270E0
    -32.018501E0 11.880890E0
    -32.012699E0 11.890420E0
    -32.004002E0 11.899870E0
    -32.001099E0 11.909220E0
    -31.995300E0 11.918490E0
    -31.989500E0 11.927680E0
    -31.983700E0 11.936780E0
    -31.977900E0 11.945790E0
    -31.972099E0 11.954730E0
    -31.969299E0 11.963590E0
    -31.963501E0 11.972370E0
    -31.957701E0 11.981070E0
    -31.951900E0 11.989700E0
    -31.946100E0 11.998260E0
    -31.940300E0 12.006740E0
    -31.937401E0 12.015150E0
    -31.931601E0 12.023490E0
    -31.925800E0 12.031760E0
    -31.922899E0 12.039970E0
    -31.917101E0 12.048100E0
    -31.911301E0 12.056170E0
    -31.908400E0 12.064180E0
    -31.902599E0 12.072120E0
    -31.896900E0 12.080010E0
    -31.893999E0 12.087820E0
    -31.888201E0 12.095580E0
    -31.885300E0 12.103280E0
    -31.882401E0 12.110920E0
    -31.876600E0 12.118500E0
    -31.873699E0 12.126030E0
    -31.867901E0 12.133500E0
    -31.862101E0 12.140910E0
    -31.859200E0 12.148270E0
    -31.856300E0 12.155570E0
    -31.850500E0 12.162830E0
    -31.844700E0 12.170030E0
    -31.841801E0 12.177170E0
    -31.838900E0 12.184270E0
    -31.833099E0 12.191320E0
    -31.830200E0 12.198320E0
    -31.827299E0 12.205270E0
    -31.821600E0 12.212170E0
    -31.818701E0 12.219030E0
    -31.812901E0 12.225840E0
    -31.809999E0 12.232600E0
    -31.807100E0 12.239320E0
    -31.801300E0 12.245990E0
    -31.798401E0 12.252620E0
    -31.795500E0 12.259200E0
    -31.789700E0 12.265750E0
    -31.786800E0 12.272240E0
  ]
  function F!(r, x)
    m = 154
    for i = 1:m
      r[i] = y[i, 1] - x[1] * (x[2] + y[i, 2])^(-1 / x[3])
    end
    return r
  end
  x0 = T[-2000, 50, 0.8] # starting value 2 is: T[-1500, 45, 0.85]
  return ADNLPModels.ADNLSModel!(F!, x0, 154, name = "bennett5-nls"; kwargs...)
end
