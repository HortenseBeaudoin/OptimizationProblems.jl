export hs17

function hs17(; n::Int = default_nvar, type::Type{T} = Float64, kwargs...) where {T}
  function f(x)
    n = length(x)
    return 100 * (x[2] - x[1]^2)^2 + (1 - x[1])^2
  end
  x0 = T[-2, 1]
  lvar = T[-0.5, -Inf]
  uvar = T[0.5, 1]
  function c!(cx, x)
    cx[1] = -x[1] + x[2]^2
    cx[2] = x[1]^2 - x[2]
    return cx
  end
  lcon = zeros(T, 2)
  ucon = T(Inf) * ones(T, 2)
  return ADNLPModels.ADNLPModel!(f, x0, lvar, uvar, c!, lcon, ucon, name = "hs17"; kwargs...)
end
