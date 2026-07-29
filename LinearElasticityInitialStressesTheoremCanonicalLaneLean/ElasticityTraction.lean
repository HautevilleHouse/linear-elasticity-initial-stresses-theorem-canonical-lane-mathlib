import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure TractionField where
  domain : Type u
  boundary : Type v
  tractionVector : boundary → Vector ℝ 3
  continuity : Prop
  equilibrium : Prop

structure TractionEvidence (T : TractionField) where
  continuityClosed : T.continuity
  equilibriumClosed : T.equilibrium

def TractionClosed (T : TractionField) : Prop :=
  T.continuity ∧ T.equilibrium

theorem traction_closed_from_evidence (T : TractionField) (E : TractionEvidence T) : TractionClosed T :=
  And.intro E.continuityClosed E.equilibriumClosed

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse