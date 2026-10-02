-- Arithmetic check of nominal amounts reported in consecutive declarations.
select
  88520142777.0 / 88253566.0 as latest_to_prior_debt_ratio,
  88520142777.0 - 88253566.0 as nominal_increase_clp,
  88520142777.0 / 45375045.0 as debt_to_asset_ratio;
