import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure InitialStressField (M : Type) [TopologicalSpace M] where
  body : M → ℝ
  load : M → ℝ
  equilibrium : Prop

structure InitialStressFieldPackage where
  M : Type
  [T : TopologicalSpace M]
  field : InitialStressField M
  boundaryCondition : Prop
  loadCase : Prop

structure InitialStressFieldEvidence (P : InitialStressFieldPackage) where
  equilibriumClosed : P.field.equilibrium
  boundaryConditionClosed : P.boundaryCondition
  loadCaseClosed : P.loadCase

def InitialStressFieldClosed (P : InitialStressFieldPackage) : Prop :=
  P.field.equilibrium ∧ P.boundaryCondition ∧ P.loadCase

theorem initial_stress_field_closed_from_evidence (P : InitialStressFieldPackage)
    (E : InitialStressFieldEvidence P) : InitialStressFieldClosed P := by
  exact And.intro E.equilibriumClosed (And.intro E.boundaryConditionClosed E.loadCaseClosed)

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse