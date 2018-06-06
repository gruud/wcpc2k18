<?php

namespace WCPC2K18Bundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RencontreType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('date', 'datetime')
                ->add('lieu', 'text')
                ->add('equipeDom',
                      'entity',
                       array ('class'=> 'WCPC2K18Bundle\Entity\Equipe',
                      'property' => 'nom',
                       'label' => 'Domicile',
                       'multiple' => false,
                       'required' => true))
                ->add('equipeExt',
                      'entity',
                       array ('class'=> 'WCPC2K18Bundle\Entity\Equipe',
                      'property' => 'nom',
                       'label' => 'Visiteur',
                      'multiple' => false,
                       'required' => true))
                ->add('journee', 'text')
                ->add('nbButTrDom')
                ->add('nbButProlDom')
                ->add('nbTabDom')
                ->add('nbButTrExt')
                ->add('nbButProlExt')
                ->add('nbTabExt')
                ->add('prolongation')
                ->add('tirAuBut')
                         
                ->add('save', 'submit');
    }
    
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'WCPC2K18Bundle\Entity\Rencontre'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'wcpc2k18bundle_rencontre';
    }


}
