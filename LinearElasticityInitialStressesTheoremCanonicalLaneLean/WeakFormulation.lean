import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure WeakFormulationPackage where
  virtualWorkPrinciple : Prop
  stressTestFunctionDuality : Prop
  boundaryTermHandling : Prop
  initialStressWeakContribution : Prop

structure WeakFormulationEvidence (W : WeakFormulationPackage) where
  virtualWorkPrincipleClosed : W.virtualWorkPrinciple
  stressTestFunctionDualityClosed : W.stressTestFunctionDuality
  boundaryTermHandlingClosed : W.boundaryTermHandling
  initialStressWeakContributionClosed : W.initialStressWeakContribution

def WeakFormulationClosed (W : WeakFormulationPackage) : Prop :=
  W.virtualWorkPrinciple ∧ W.stressTestFunctionDuality ∧
  W.boundaryTermHandling ∧ W.initialStressWeakContribution

theorem weak_formulation_closed_from_evidence (W : WeakFormulationPackage) (Ev : WeakFormulationEvidence W) :
    WeakFormulationClosed W := by
  exact And.intro Ev.virtualWorkPrincipleClosed
    (And.intro Ev.stressTestFunctionDualityClosed
      (And.intro Ev.boundaryTermHandlingClosed Ev.initialStressWeakContributionClosed))

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse