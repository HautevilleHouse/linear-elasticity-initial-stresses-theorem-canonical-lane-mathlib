import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure EquilibriumEquation where
  stressDivergence : Type u → Type v
  bodyForce : Type u → Type v
  equilibriumLaw : Prop
  weakFormulation : Prop

structure EquilibriumEquationEvidence (E : EquilibriumEquation) where
  equilibriumLawClosed : E.equilibriumLaw
  weakFormulationClosed : E.weakFormulation

def EquilibriumEquationClosed (E : EquilibriumEquation) : Prop :=
  E.equilibriumLaw ∧ E.weakFormulation

theorem equilibrium_equation_closed_from_evidence (E : EquilibriumEquation) (Ev : EquilibriumEquationEvidence E) : EquilibriumEquationClosed E :=
  And.intro Ev.equilibriumLawClosed Ev.weakFormulationClosed

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse