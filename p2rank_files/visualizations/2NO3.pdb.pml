
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/2NO3.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/2NO3.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1763,1765,1767,1776,1774,1775,4957,4959,4467,4455,4468,4469,4349,4350,4448,4453,4351,4330,4931,4922,4909,4910,4714,4716,4718,4721,4725,4711,4723,2006,2008,4726,4356,1971,1973,1761,1504,1507,1510,1770,1760,1397,1497,1517,1502,1772,1798,1380,1400,1367,1368,1365,1398,1399,1518,1396,1401,1402,1405,4924,1470,1958,1959,1516,1979,1980] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3809,4142,4141,4165,4241,4239,4242,3762,3763,3163,3165,3797,3167,3311,3779,3781,3783,3784,4150,4247,4243,4129,3179,3169,3170,3172,3178,3182,3326,3328,3213,3214,4130,3191,4250,3187] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [249,250,251,199,200,201,202,204,348,802,806,818,820,823,215,206,216,219,1189,1289,1180,1281,1280,622,1204,1205,848,845,838,841,236,228,364,224] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4305,5634,5651,5652,4325,4328,4329,4316,4332,4294,4493,4494,4291,4284,4283,4290,4304,4362,4335,4336,3435,3436,3437,4103,3466,3468,4265,4271,4272,4267,4337,4338] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [478,479,1411,450,1384,438,2691,2700,2689,470,476,507,2683,1322,1310,1142,1304,1306,1307,1308,449,1385,1389,1373,1370,1325,1326,1377,1381] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [4706,4764,4766,2007,4726,4732,4734,2043,2030,2051,2052,4707,1775,4958,4960,4994,1777,1815,1778,1813,1783,1814] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4113,4130,4360,4272,4273,3191,4250,3194,3179,3182,3186,3187,4150,4129] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [229,232,1288,1287,223,219,1286,1289,1311,1301,477,1412,1133,1152] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4450,4098,4369,4370,4103,4102,4362,4335,4451,4328,4329,4332,4528] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1857,1711,1713,2137,2148,1714,2131,2133,2124,1703,1680] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4654,4662,4665,4808,4631,5084,5082,5088,4630] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1802,1839,2014,2016,1876] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        