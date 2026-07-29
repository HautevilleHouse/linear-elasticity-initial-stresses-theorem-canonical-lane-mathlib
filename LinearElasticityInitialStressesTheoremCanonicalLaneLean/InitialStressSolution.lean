import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure InitialStressSolution where
  displacementSolution : Type
  stressSolution : Type
  satisfiesEquilibrium : Prop
  satisfiesConstitutiveLaw : Prop
  satisfiesBoundaryConditions : Prop
  uniqueness : Prop
  satisfiesEquilibriumTerm : satisfiesEquilibrium
  satisfiesConstitutiveLawTerm : satisfiesConstitutiveLaw
  satisfiesBoundaryConditionsTerm : satisfiesBoundaryConditions
  uniquenessTerm : uniqueness

structure SolutionEvidence (S : InitialStressSolution) where
  satisfiesEquilibriumClosed : S.satisfiesEquilibrium
  satisfiesConstitutiveLawClosed : S.satisfiesConstitutiveLaw
  satisfiesBoundaryConditionsClosed : S.satisfiesBoundaryConditions
  uniquenessClosed : S.uniqueness

def SolutionClosed (S : InitialStressSolution) : Prop :=
  S.satisfiesEquilibrium ∧ S.satisfiesConstitutiveLaw ∧ S.satisfiesBoundaryConditions ∧ S.uniqueness

theorem solution_closed_from_evidence (S : InitialStressSolution) (E : SolutionEvidence S) : SolutionClosed S := by
  exact And.intro E.satisfiesEquilibriumClosed
    (And.intro E.satisfiesConstitutiveLawClosed
      (And.intro E.satisfiesBoundaryConditionsClosed E.uniquenessClosed))

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse