import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure ElasticAdmissibleObject where
  bodyForceCompatibility : Prop
  initialStrainCompatibility : Prop
  stressTensorCompatibility : Prop
  equilibriumSatisfied : Prop

structure AdmissibleClass where
  object : ElasticAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.equilibriumSatisfied ∧ A.object.stressTensorCompatibility) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse