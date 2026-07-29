import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure EquilibriumPackage where
  stressEquilibrium : Prop
  bodyForceBalance : Prop
  tractionBoundaryCondition : Prop
  weakFormulation : Prop

structure EquilibriumEvidence (E : EquilibriumPackage) where
  stressEquilibriumClosed : E.stressEquilibrium
  bodyForceBalanceClosed : E.bodyForceBalance
  tractionBoundaryConditionClosed : E.tractionBoundaryCondition
  weakFormulationClosed : E.weakFormulation

def EquilibriumClosed (E : EquilibriumPackage) : Prop :=
  E.stressEquilibrium ∧ E.bodyForceBalance ∧ E.tractionBoundaryCondition ∧ E.weakFormulation

theorem equilibrium_closed_from_evidence (E : EquilibriumPackage) (Ev : EquilibriumEvidence E) :
    EquilibriumClosed E := by
  exact And.intro Ev.stressEquilibriumClosed
    (And.intro Ev.bodyForceBalanceClosed
      (And.intro Ev.tractionBoundaryConditionClosed Ev.weakFormulationClosed))

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse