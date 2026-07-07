import GreenGriffithsLangConjectureCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GreenGriffithsLangConjectureCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GreenGriffithsLangConjectureCanonicalLaneLean
end HautevilleHouse
