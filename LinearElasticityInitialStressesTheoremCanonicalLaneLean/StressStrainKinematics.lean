import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure StressStrainKinematics where
  displacementField : Type
  strainTensor : Type
  stressTensor : Type
  linearCompatibility : Prop
  strainDisplacementRelation : Prop
  equilibriumEquation : Prop
  initialStressGradient : Prop
  linearCompatibilityTerm : linearCompatibility
  strainDisplacementRelationTerm : strainDisplacementRelation
  equilibriumEquationTerm : equilibriumEquation
  initialStressGradientTerm : initialStressGradient

structure StressStrainEvidence (K : StressStrainKinematics) where
  linearCompatibilityClosed : K.linearCompatibility
  strainDisplacementRelationClosed : K.strainDisplacementRelation
  equilibriumEquationClosed : K.equilibriumEquation
  initialStressGradientClosed : K.initialStressGradient

def StressStrainClosed (K : StressStrainKinematics) : Prop :=
  K.linearCompatibility ∧ K.strainDisplacementRelation ∧ K.equilibriumEquation ∧ K.initialStressGradient

theorem stress_strain_closed_from_evidence (K : StressStrainKinematics) (E : StressStrainEvidence K) : StressStrainClosed K := by
  exact And.intro E.linearCompatibilityClosed
    (And.intro E.strainDisplacementRelationClosed
      (And.intro E.equilibriumEquationClosed E.initialStressGradientClosed))

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse