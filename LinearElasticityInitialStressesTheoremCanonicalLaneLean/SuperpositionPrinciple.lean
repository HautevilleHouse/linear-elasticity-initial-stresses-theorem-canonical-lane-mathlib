import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure SuperpositionPackage where
  totalStressDecomposition : Prop
  initialStressContribution : Prop
  appliedStressContribution : Prop
  linearSuperpositionValid : Prop

structure SuperpositionEvidence (S : SuperpositionPackage) where
  totalStressDecompositionClosed : S.totalStressDecomposition
  initialStressContributionClosed : S.initialStressContribution
  appliedStressContributionClosed : S.appliedStressContribution
  linearSuperpositionValidClosed : S.linearSuperpositionValid

def SuperpositionClosed (S : SuperpositionPackage) : Prop :=
  S.totalStressDecomposition ∧ S.initialStressContribution ∧
  S.appliedStressContribution ∧ S.linearSuperpositionValid

theorem superposition_closed_from_evidence (S : SuperpositionPackage) (Ev : SuperpositionEvidence S) :
    SuperpositionClosed S := by
  exact And.intro Ev.totalStressDecompositionClosed
    (And.intro Ev.initialStressContributionClosed
      (And.intro Ev.appliedStressContributionClosed Ev.linearSuperpositionValidClosed))

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse